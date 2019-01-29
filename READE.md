# fswatch-playground

* learn [fswatch](http://emcrisostomo.github.io/fswatch/) file change monitor
* github @ [emcrisostomo/fswatch](https://github.com/emcrisostomo/fswatch)

### Example Script

see [`watch.sh`](watch.sh)

### Example Usage

```sh
# get file path information for changed files
fswatch -0 .

# print file path information for each changed file on separate line
fswatch -0 . | xargs -0 -n 1 -I {} echo {}
```
