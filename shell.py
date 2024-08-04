import ZODB, ZODB.FileStorage
import readline
import code

readfunc = readline.parse_and_bind("tab: complete")

storage = ZODB.FileStorage.FileStorage('Data.fs')
db = ZODB.DB(storage)
connection = db.open()
root = connection.root
code.interact(local=globals(), readfunc=readfunc)
