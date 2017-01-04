## Intro
* Josh Unger
* Software Engineer at IdeaRoom - http://www.idearoominc.com
* Please share 30 seconds if you know more about the news
* Ask questions anytime
* Drinking from the firehose... 

![](https://media.giphy.com/media/OhWT5jdvTPCE0/giphy.gif)

## News
 * http://www.imdb.com/title/tt4158110/
 ![](https://gitlab.com/joshunger/public/raw/master/mr-robot-snl.mp4)
 * https://html5test.com/results/desktop.html
 * http://kangax.github.io/compat-table/es2016plus/

## Google Chrome
* [Chrome 53 - stable]()
  * [`captureStream()`](https://developers.google.com/web/updates/2016/10/capture-stream)
  
* [Chrome 54 - stable - 10/12](https://googlechromereleases.blogspot.com/2016/10/stable-channel-update-for-desktop.html)
  * [Custom elements v1](https://developers.google.com/web/fundamentals/getting-started/primers/customelements)
  * [BroadcastChannel API, requestFullScreen, Foreign fetch](https://developers.google.com/web/updates/2016/10/nic54)
  
* [Chrome 54 for Android - stable - 10/19](https://googlechromereleases.blogspot.com/2016/10/chrome-for-android-update.html)
  * [Background media, etc.](http://www.androidpolice.com/2016/10/20/chrome-54-adds-background-media-playback-colored-tabs-apk-download/)
  * [Page Visibility](https://developer.mozilla.org/en-US/docs/Web/API/Page_Visibility_API)
  
* [Chrome 55 - beta]()
  * [debugging async/await](https://twitter.com/addyosmani/status/789126892402204673)
  * [web share api](https://developers.google.com/web/updates/2016/10/navigator-share)
  * [css `hyphens: manual;` visibility](https://developers.google.com/web/updates/2016/10/css-hyphens)
  * [UC Browser](https://developers.google.com/web/updates/2016/10/devtools-digest)
     * [UC Browser Wikipedia](https://en.wikipedia.org/wiki/UC_Browser)
     * [bug 646360](https://bugs.chromium.org/p/chromium/issues/detail?id=646360)
  * [css `touch-action`](https://developers.google.com/web/updates/2016/10/touch-action)
  * [pointer events](https://developers.google.com/web/updates/2016/10/pointer-events)
  * [`addEventListener('click', myClickHandler, { once: true });` vs remove](https://developers.google.com/web/updates/2016/10/addeventlistener-once)
  * [`navigator.share()`](https://developers.google.com/web/updates/2016/10/navigator-share)
  * [`addEventListener('auxclick'`](https://developers.google.com/web/updates/2016/10/auxclick)
  
* [Chrome 56 - canary]()
  * [Not Secure Warnings](https://developers.google.com/web/updates/2016/10/avoid-not-secure-warn)
  * [DevTools Console is powered by CodeMirror](https://developers.google.com/web/updates/2016/10/devtools-digest)

## Safari
* Who is using Technology Preview?
* [Safari Technology Preview 15 - 10/12](https://webkit.org/blog/6987/release-notes-for-safari-technology-preview-15/)
  * [`font-variation-settings: 'wght' 0.8;`](https://webkit.org/blog/7051/font-variations-on-the-web/)
     * [demo open this link in safari](https://jsfiddle.net/0v1wkpmz/)
  * [<a href... download="MyGoogleLogo"...`](https://developers.google.com/web/updates/2011/08/Downloading-resources-in-HTML5-a-download)
  * [KeybaordEvent implementations](https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent)
  * [line range highlighting for debugger](https://bugs.webkit.org/show_bug.cgi?id=161658)

* [Safari Technology Preview 16 - 10/26](https://webkit.org/blog/7030/release-notes-for-safari-technology-preview-16/)
  * [Gamepad API](https://developer.mozilla.org/en-US/docs/Web/API/Gamepad_API)
  * [`fetch("some.json", {cache: "no-store"})`](https://hacks.mozilla.org/2016/03/referrer-and-cache-control-apis-for-fetch/)
  * [`Object.freeze(obj)` bugs](https://webkit.org/blog/7030/release-notes-for-safari-technology-preview-16/)
 
## FireFox
* [FireFox 49.0.2 - release on 10/20](https://www.mozilla.org/en-US/firefox/49.0.2/releasenotes/)

* [FireFox 50.0 - beta as of 9/20](https://www.mozilla.org/en-US/firefox/50.0beta/releasenotes/)
  * [developer notes](https://developer.mozilla.org/en-US/Firefox/Releases/50)
  * [`border-image-repeat: space`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-image-repeat)
  * [`Symbol.hasInstance()`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol/hasInstance)
  * [ES2017 `Object.getOwnPropertyDescriptors()`](http://www.2ality.com/2016/02/object-getownpropertydescriptors.html)
  * [Web Console understand source maps!!!](https://developer.mozilla.org/en-US/docs/Tools/Web_Console/Console_messages#Source_maps)
  * [The Web Console now displays stack traces for XHR or Fetch() network requests](https://developer.mozilla.org/en-US/docs/Tools/Web_Console/Console_messages#Viewing_network_request_details)
  * [`X-Content-Type-Options: nosniff`]()
  * [cookie name prefixes `__Secure`]
     * https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Set-Cookie
     * https://tools.ietf.org/html/draft-ietf-httpbis-cookie-prefixes-00
  * [`Referrer-Policy` with two r's](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referrer-Policy)
     * https://w3c.github.io/webappsec-referrer-policy/#referrer-policy-header
  * `addEventListener('click', myClickHandler, { once: true });`
  * [The interface NodeList are now iterable and the methods forEach(), values(), NodeList.entries() and NodeList.keys()](https://developer.mozilla.org/en-US/docs/Web/API/NodeList)
  * [DOMTokenList are now iterable and the methods forEach(), values(), DOMTokenList.entries() and DOMTokenList.keys()](https://developer.mozilla.org/en-US/docs/Web/API/DOMTokenList)
  * [drag and drop multiple items with `DataTransfer.items`](https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer/items)
  * [MediaStream work]()
  * [`Navigator.getBattery()`](https://developer.mozilla.org/en-US/docs/Web/API/Navigator/getBattery)
  * [File and Directory Entries API work](https://developer.mozilla.org/en-US/docs/Web/API/File_and_Directory_Entries_API)
* [FireFox 51 - release in 1/2017](https://developer.mozilla.org/en-US/Firefox/Releases/51)
  * https://developer.mozilla.org/en-US/Firefox/Releases/51
  * [`Symbol.toStringTag`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol/toStringTag)
  * mozCaptureStream() - see Chrome
  * const and let are now fully ES2015-compliant 
* [FireFox 52 - nightly, release 3/2017](https://developer.mozilla.org/en-US/Firefox/Releases/52)
  * [es support at 91%!!!!!!!!](http://kangax.github.io/compat-table/es2016plus/)
  * [async/await support](https://blog.nightly.mozilla.org/2016/11/01/async-await-support-in-firefox/)
  * [display whitespace in dom inspector](https://blog.nightly.mozilla.org/2016/10/17/devtools-now-display-white-space-text-nodes-in-the-dom-inspector/)
  * Firefox 52 ESR to be the last version to support Window XP and Vista
  * [ui for `input type="time"`](https://jsfiddle.net/69q65f7g/)
  * [turn on `selectstart` and s`electionchange`](https://developer.mozilla.org/en-US/docs/Web/Events/selectstart)

## Microsoft Edge
* [Windows 10 build 14942 - 10/7](https://developer.microsoft.com/en-us/microsoft-edge/platform/changelog/desktop/14942/)

## WebStorm
* [WebStorm 2016.3 EAP (163.6110) on Oct 14th](https://blog.jetbrains.com/webstorm/2016/10/webstorm-2016-3-eap-163-6110/)
  * TypeScript language service
  * Code Inspections - var/let, require/import, convert to arrow
* [WebStorm 2016.3 EAP (163.6512) on Oct 20th](https://blog.jetbrains.com/webstorm/2016/10/webstorm-2016-3-eap-163-6512/)
  * Debugging React Native apps
* [WebStorm 2016.2.4 on Oct 19th](https://blog.jetbrains.com/webstorm/2016/10/webstorm-2016-2-4/)
  * Scrolling on macOS Sierra 

## Your turn to find some news on
* angular
* react/redux
* es7
* webpack
* vue

## React
* [15.4.0 released 11/16](https://facebook.github.io/react/blog/2016/11/16/react-v15.4.0.html)

## For weekend update, I'm Josh Unger  

## Future Reading
* Chrome
  * https://googlechromereleases.blogspot.com/
  * https://developers.google.com/web/updates/2016/
  * https://developers.google.com/web/updates/2016/10/devtools-digest
  * https://twitter.com/DevToolsCommits
  * https://blog.chromium.org/
  * https://www.chromestatus.com/features
* Internet Explorer
  * https://blogs.windows.com/msedgedev/
  * https://developer.microsoft.com/en-us/microsoft-edge/platform/changelog/insider/
* FireFox
  * https://www.mozilla.org/en-US/firefox/releases/
  * https://developer.mozilla.org/en-US/Firefox/Releases/
  * https://developer.mozilla.org/en-US/Firefox/Experimental_features
  * https://blog.nightly.mozilla.org/
  * https://twitter.com/FirefoxNightly

* http://stateofjs.com/

