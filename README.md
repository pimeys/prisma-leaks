Take a look into the repo in pimeys/prisma-leaks
Check that the nApi feature is NOT enabled.
Run yarn test --maxWorkers=1 --logHeapUsage
You'd expect it to run query engine due to having only one worker.
On my machine I see 42 query-engine processes up and running.