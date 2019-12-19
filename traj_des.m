function xd = traj_des(t,k)
thres = 1000;
mt200 = mod(t,2*thres);
mt100 = mod(t,thres);
switch(k)
    case 1
        if (mt200>thres)
%             xd = [150 0 150 0 0 0]'+([250 0 250 0 0 0]'-[150 0 150 0 0 0]')*(mt100/thres);
            xd = [250 0 250 0 0 0]';
        elseif (mt200<=thres)
%             xd = [250 0 250 0 0 0]'-([250 0 250 0 0 0]'-[150 0 150 0 0 0]')*(mt100/thres);
            xd = [150 0 150 0 0 0]';
        else
            xd = [250 0 250 0 0 0]';
        end
    case 2 
        if (mt200>thres)
%             xd = [150 0 -150 0 0 0]'+([250 0 -250 0 0 0]'-[150 0 -150 0 0 0]')*(mt100/thres);
            xd = [250 0 -250 0 0 0]';
        elseif (mt200<=thres)
%             xd = [250 0 -250 0 0 0]'-([250 0 -250 0 0 0]'-[150 0 -150 0 0 0]')*(mt100/thres);
            xd = [150 0 -150 0 0 0]';
        else
            xd = [250 0 -250 0 0 0]';
        end
    case 3 
        if (mt200>thres)
%             xd = [-150 0 150 0 0 0]'+([-250 0 250 0 0 0]'-[-150 0 150 0 0 0]')*(mt100/thres);
            xd = [-250 0 250 0 0 0]';
        elseif (mt200<=thres)
%             xd = [-250 0 250 0 0 0]'-([-250 0 250 0 0 0]'-[-150 0 150 0 0 0]')*(mt100/thres);
            xd = [-150 0 150 0 0 0]';
        else
            xd = [-250 0 250 0 0 0]';
        end
    case 4 
        if (mt200>thres)
%             xd = [-150 0 -150 0 0 0]'+([-250 0 -250 0 0 0]'-[-150 0 -150 0 0 0]')*(mt100/thres);
            xd = [-250 0 -250 0 0 0]';
        elseif (mt200<=thres)
%             xd = [-250 0 -250 0 0 0]'-([-250 0 -250 0 0 0]'-[-150 0 -150 0 0 0]')*(mt100/thres);
            xd = [-150 0 -150 0 0 0]';
        else
            xd = [-250 0 -250 0 0 0]';
        end
end

end