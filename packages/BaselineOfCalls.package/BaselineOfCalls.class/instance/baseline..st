baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do:
			[ spec
				baseline: 'Aconcagua'
					with: [ spec
						loads: #('Core');
						repository: 'github://mtaborda/aconcagua:master/repository' ];
				baseline: 'Chalten'
					with: [ spec
						loads: #('Core');
						repository: 'github://mtaborda/chalten:master/repository' ];
				configuration: 'Teapot'
					with: [ spec
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/zeroflag/Teapot/main/' ].
			spec
				package: 'Calls-Core'
					with: [ spec
						requires: 'Aconcagua';
						requires: 'Chalten' ];
				package: 'Calls-Tests' with: [ spec requires: 'Calls-Core' ].
			spec
				group: 'default' with: #('Core' 'Tests');
				group: 'Core' with: #('Calls-Core');
				group: 'Tests' with: #('Calls-Tests') ]