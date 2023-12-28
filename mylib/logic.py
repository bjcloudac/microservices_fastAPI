import wikipedia

def wiki(name="War Goodness", length=1):
    """This is Wiki Fetcher Func"""
    my_wiki = wikipedia.summary(name, length)
    return my_wiki
