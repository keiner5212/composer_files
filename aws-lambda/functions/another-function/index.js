exports.handler = async (event) => {
    const { name = 'World' } = event;
    
    console.log(`Processing request for: ${name}`);
    
    return {
        statusCode: 200,
        body: JSON.stringify({
            message: `Hello, ${name}!`,
            timestamp: new Date().toISOString(),
            functionName: 'another-function'
        })
    };
};