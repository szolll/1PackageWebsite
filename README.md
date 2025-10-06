# 1PackageWebsite

We can fit a website into 1 tcp package; so let's do that ;)

# Max size

The practical TCP packet size limit is around 1500 bytes(headers 20 bytes/ipv 60/ipv6), and possibly even lower 1380 bytes even depending on Ethernet MTU and overhead. 64KB is theoretical, not often seen. 

So we're aiming for lower then 1380 bytes, covering most if not all cases.
