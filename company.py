import yahooquery

def get_symbol(symbol):
    getDetails = yahooquery.Ticker(symbol)
    longName = (getDetails.price.get(symbol).get('longName'))
    # print(getDetails.price.get(symbol).get('longName'))
    return longName


'''
import requests


def get_symbol(symbol):
    url = "http://d.yimg.com/autoc.finance.yahoo.com/autoc?query={}&region=1&lang=en".format(symbol)

    result = requests.get(url).json()

    for x in result['ResultSet']['Result']:
    	return x['name']
'''