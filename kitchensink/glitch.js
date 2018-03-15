const fetch = require('isomorphic-fetch');

(async () => {
    const options = {
        method: 'POST',
    };

    const url = 'https://api.glitch.com/project/githubImport?token=d6ea4329-9178-496a-9edf-faed57fdaddc&projectId=4079d540-e251-43bc-b814-15816fb72d8d&repo=joshunger%2Fbugrepro';

    // const json = await fetch(url, options).then(response => response.json());
    const a = await fetch(url, options);

    console.log(a.body.toString());
})();