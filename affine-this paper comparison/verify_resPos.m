function [] = verify_resPos(Eta, edge, tr, begin, interval)
    figure(1);
    % 绘制轨迹线
    plot(Eta{1}(:,1), Eta{1}(:,2), ... 
         Eta{2}(:,1), Eta{2}(:,2), ... 
         Eta{3}(:,1), Eta{3}(:,2), ...
         Eta{4}(:,1), Eta{4}(:,2), ... 
         Eta{5}(:,1), Eta{5}(:,2), ...
         Eta{6}(:,1), Eta{6}(:,2), ...
         Eta{7}(:,1), Eta{7}(:,2));
    hold on;
    axis equal
    
    L=5.255;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
    B=2.5;
    L01=4.0;    
    
    for i=begin:interval:length(tr)
        % 绘制连接线
        for j=1:size(edge,2)
            index1 = edge(1,j); index2 = edge(2,j);
            plot([Eta{index1}(i,1), Eta{index2}(i,1)], [Eta{index1}(i,2), Eta{index2}(i,2)], 'k', 'LineWidth', 2); hold on;
        end
        
        % 绘制内置无人艇
        [xx yy] = ship_contour(Eta{1}(i,:)', L, B, L01);
        fill(xx,yy,'g')
        [xx yy] = ship_contour(Eta{2}(i,:)', L, B, L01);
        fill(xx,yy,'g')
        [xx yy] = ship_contour(Eta{3}(i,:)', L, B, L01);
        fill(xx,yy,'g')
        [xx yy] = ship_contour(Eta{4}(i,:)', L, B, L01);
        fill(xx,yy,'r')
        [xx yy] = ship_contour(Eta{5}(i,:)', L, B, L01);
        fill(xx,yy,'b')
        [xx yy] = ship_contour(Eta{6}(i,:)', L, B, L01);
        fill(xx,yy,'k')
        [xx yy] = ship_contour(Eta{7}(i,:)', L, B, L01);
        fill(xx,yy,'m')
    end
end