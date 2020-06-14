(
	SynthDef(\cs80lead, {

		arg freq=880, amp=0.5, attack=0.75, decay=0.5, sustain=0.8, release=1.0, fatt=0.75, fdecay=0.5, fsus=0.8, frel=1.0,
			cutoff=200, pan=0, dtune=0.002, vibrate=4, vibdepth=0.015, gate=1.0, ratio=1,out=0,cbus=1;
		var vib,ffreq,sig;
		cutoff=In.kr(cbus);
		vib=SinOsc.kr(vibrate).range(-1*vibdepth,vibdepth)+1;
		freq=Line.kr(freq,freq*ratio,5);
		freq=freq*vib;
		sig=Mix.ar(Saw.ar([freq,freq*(1+dtune)]));
		// keep this below nyquist!!
		ffreq=max(freq*12,cutoff)+100;
		sig=LPF.ar(sig,ffreq);


	    OffsetOut.ar(out, DirtPan.ar(sig, ~dirt.numChannels, pan));


	}).add;	
)