function F=prova(x)
    F=[3*x(1)-cos(x(2))+sin(x(3)*x(4))+x(4).^2+4*x(5);
        exp(x(1))+4*x(2).^3+x(3)-x(4)*x(5).^2;
        sin(x(1)*x(2))+exp(x(2).^2)+x(3)-x(4)-cos(x(5))+10;
        x(1)+x(2).^3*sin(x(3))+exp(4*x(4))+cos(x(5).^2);
        4*x(1)*x(2)+exp(x(3).^3*x(4))-5*x(5).^3-7*x(1)*sin(x(3));
        ];
    
end