#!/usr/bin/python3
""" A module that works with the Reddit API"""
import requests
import sys


def recurse(subreddit, hot_list=[], after='null'):
    """Returns recursively the hot posts of a subreddit"""
    try:
        url = 'https://www.reddit.com/r/' + subreddit + '/hot.json'
        header = {'User-agent': 'Kenneth98765421'}
        params = {'after': 'after'}
        resp = requests.get(url, headers=header,
                            params=params, allow_redirects=False).json()
        key = resp.get('data').get('children')
        hot_list += [value.get('data').get('title') for value in key]
        after = resp.get('data').get('after')
        if after is not None:
            recurse(subreddit, hot_list, after)
        return hot_list
    except:
        return None
