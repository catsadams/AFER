classdef AFER < SerialLink
 
	properties
	end
 
	methods
		function ro = AFER()
			objdir = which('AFER');
			idx = find(objdir == filesep,2,'last');
			objdir = objdir(1:idx(1));
			 
			tmp = load(fullfile(objdir,'@AFER','matAFER.mat'));
			 
			ro = ro@SerialLink(tmp.sr);
			 
			 
		end
	end
	 
end
