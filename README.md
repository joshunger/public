# wants

- unanswer Slack to task
- GitHub inline PR diffs emails

# readings

## 2021
### Ignore single/double
```
git diff --word-diff-regex="[^'\"]" master... reformatted-file.yml
```

### Avoid Nesting when you're Testing
- https://kentcdodds.com/blog/avoid-nesting-when-youre-testing
- [The Sliding Scale of Giving a Fuck](https://capwatkins.com/blog/the-sliding-scale-of-giving-a-fuck)
- [What exactly are Google's '500' color swatches?](https://graphicdesign.stackexchange.com/questions/43021/what-exactly-are-googles-500-color-swatches)
- [How to Avoid the “Boolean Trap” When Designing React Components](https://spicefactory.co/blog/2019/03/26/how-to-avoid-the-boolean-trap-when-designing-react-components/)
### Use the NOT operator as little as possible
> The real world is very complicated; the software we write is supposed to map those complexities into applications. The result is that we often end up needing to deal with convoluted logical expressions. You should write your IF statements in such a way as to keep them as straightforward and understandable as possible. For example, expressions are often more readable and understandable when they are stated in a positive form. Consequently, you are probably better off avoiding the NOT operator in conditional expressions.

Exception:
```
IF NOT (arr1.count = arr2.count
   AND arr1.count = arr3.count
   AND arr1.count = arr4.count AND . . .
   AND arr1.count = arr10.count) THEN RAISE e_missing_value;
```

Ref: http://code.intfast.ca/viewtopic.php?t=63

# vscode

- https://github.com/kasecato/vscode-intellij-idea-keybindings
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
  ```
  "editor.codeActionsOnSave": {
        "source.fixAll": true
    }
  ```
- [File Utils](https://marketplace.visualstudio.com/items?itemName=sleistner.vscode-fileutils)
  - Adds `File Utils: Move` to command palette
- File > Auto Save
- https://marketplace.visualstudio.com/items?itemName=LinusU.auto-dark-mode
- Google search extension
- Docker extension
- Spellcheck

# chrome

- [Tampermonkey](https://chrome.google.com/webstore/detail/tampermonkey/dhdgffkkebhmkfjojejmpbldmpobfkfo?hl=en)
