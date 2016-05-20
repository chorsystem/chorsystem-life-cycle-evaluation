## Performance evaluation of the ChorSystem Middleware life cycle operations

This repository contains the workflow models implementing the trip booking choreography model used for evaluating the life cycle operations provided by the ChorSystem Middleware. Futhermore, it contains the measured raw data as well as the aggregated results. For each scenario, we conducted 10 runs.

### Choreography artifacts
This folder contains all choreography artifacts such as the refined workflow model implementing the choreography participants.

### Sequential deployment
In this scenario, we evaluated the deployment processing time when all eight participant workflow models are directly deployed by JMeter on all running workflow engine nodes in sequential order, without leveraging the capabilities of the ChorSystem Middleware. In the corresponding folder the JMeter logs as well as the aggregated deployment times can be found.
		
		
### Parallel deployment
In this scenario, each process bundle is sent by JMeter in parallel to the running workflow engine nodes.

### ChorSystem deployment
In this scenario, we employ our ChorSystem Middleware using the information of the choreography deployment descriptor to build a choreography deployment message which is used to distribute the eight choreography participants onto the workflow engines. The deployment message as well the measured results can be found in the corresponding folder.

### ChorSystem start
Measured times for instantiating a choreography instance on one workflow engine node.

### ChorSystem suspend
Measured times for suspending a choreography instance running on one workflow engine node.

### ChorSystem resume
Measured times for resuming a paused choreography instance deployed on one workflow engine node.

### ChorSystem terminate
Measured times for forcefully terminating a choreography instance running on one workflow engine node.

### ChorSystem undeploy
Measured times for undeploying the eight workflow models implementing a choreography model from one workflow engine node.
