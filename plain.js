Object.keys(process.env).forEach(key => {
    if (key.startsWith('ACTIONS_')) {
        console.info(`${key}=${process.env[key]}`);
    }
})
