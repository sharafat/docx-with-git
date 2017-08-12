# DOCX files with git
#### (Basically by using a Word-to-Markdown converter)


##### Installation

1. Install [LibreOffice](http://www.libreoffice.org/).
2. Make sure Ruby 2.4+ is installed (`ruby -v`). If not do the following (on Mac OS X):
   2.1. Download ruby: `\curl -sSL https://get.rvm.io | bash -s stable`
   2.2. See the list of ruby versions and note the latest one (must be 2.4+): `rvm list known`
   2.3. To install the latest version: `rvm install ruby-2.4.1`
   2.4. Check ruby version is the latest one: `ruby -v`
   2.4. To set this as the default version, run: `rvm use ruby-2.4.1 --default`
3. Install Word-to-Markdown: `gem install word-to-markdown`
4. Drop the directory `scripts` along with the file `.gitignore` and the shortcut file `watchdog.sh` into your working directory.
5. Make sure `python` is installed on your system.


##### Running

1. Open a Terminal window, `cd` to your working directory and run `./watchdog.sh`.
2. Now everytime you modify and save a docx file, a corresponding md file will be generated.
3. Press `Ctrl+C` to terminate `watchdog.sh` when you're done changing the docx file.

**Note: This works on docx files placed only right inside your working directory. It won't detect changes in files that are residing under subdirectories inside your working directory.**


##### Credits

- [Word to Markdown Converter](https://github.com/benbalter/word-to-markdown) _by benbalter_
- [when-changed](https://github.com/joh/when-changed) _by joh_
