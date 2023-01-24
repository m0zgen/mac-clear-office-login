# Clean MS Office Activation Files (macOS)

Behavior: Microsoft Office not apply licence subscriptions, open documents in read-only mode. 

This files located in:

```
ls ~/Library/Group\ Containers/
```

At current time this files has names:
* UBF8T346G9.ms
* UBF8T346G9.Office
* UBF8T346G9.OfficeOsfWebHost

## All steps

1. Sign out and quit all office applications
2. Reset keychain: Open Finder > Applications > Utilities > Keychain Access and remove the following password entries:
  • Microsoft Office Identities Cache 2
  • Microsoft Office Identities Settings
3. Search for all occurrences of ADAL in the keychain and remove all those entries if present.
4. Remove the Office for Mac activation files:
* Go to <YourUserName> Library > Group Containers( you can press command +shift +G and enter the route to go the folder) and ctrl + click or right-click each of these folders if present, and then click Move to Trash.
  * UBF8T346G9.ms
  * UBF8T346G9.Office
  * UBF8T346G9.OfficeOsfWebHost
5. Restart Mac, open office and sign in again.

## Links

* [The authentication session has expired. Please sign in again](https://answers.microsoft.com/en-us/msoffice/forum/all/just-downloaded-office-for-mac-student-edition/237364a1-bff0-4d33-bb5b-517dfa5e7080)