const fetch = require('isomorphic-fetch');

(async () => {
    const options = {
        method: 'POST',
    };

    const url = 'https://api.glitch.com/project/githubImport?token=YEAH!&projectId=4079d540-e251-43bc-b814-15816fb72d8d&repo=joshunger%2Fbugrepro';

    // const json = await fetch(url, options).then(response => response.json());
    const a = await fetch(url, options);

    console.log(a.body.toString());
})();