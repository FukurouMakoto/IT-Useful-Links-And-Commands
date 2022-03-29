# How to change the Product Key with DISM

The following is a useful tutorial on how to change the product key in Windows Server.
This is necessary when installing from an Eval version. With this you can convert it from the Eval version to a legit copy of Windows Server. 

```
https://blog.alschneiter.com/2015/06/02/use-dism-to-change-the-product-key/
```

Note that the following code won't work with a MAK key:

Get eligible upgrade options

```
dism /online /get-targeteditions
```
```
dism /online /set-ServerEdition serverEdition /Productkey:XXXXX-XXXXX-XXXXX-XXXXX-XXXXX /accepteula
```

In order to add your MAK product key to your server, you must do the following from an elevated command prompt:

1) Remove any existing product key (in case of trial key):

```
slmgr.vbs /upk
```
2) Clear product key from registry:
```
slmgr.vbs /cpky
```
3) Enter new product key:
```
slmgr.vbs /ipk XXXXX-XXXXX-XXXXX-XXXXX-XXXXX 
```
Instead of using your MAK product key, choose the appropriate KMS Client Product Key for your Windows version from the following link:
```
docs.microsoft.com/en-us/windows-server/get-started/kms-client-activation-keys
```
4) Activate Windows:
```
slmgr.vbs /ato
```
5) From here, you should be good to go. If not, try the above "/dism /set-ServerEdition" code again with your MAK key.



