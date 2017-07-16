function q = quadadaptativa(f,a,b,tol,varargin)


    c=(a + b)/2;                                                           %Ponto médio do intervalo [A,B], que é passado por mim no script principal
    f_a=feval(f,a,varargin{:});                                            %Avalia as funções
    f_c=feval(f,c,varargin{:});                                               
    f_b=feval(f,b,varargin{:});
    q=quadrec(f, a, b, tol, f_a, f_c, f_b, varargin{:});                  %Chama função para avaliar quadratura
    
end

function q = quadrec(f,a,b,tol,f_a,f_c,f_b,varargin)

    h = b - a;                                                             %Define o passo
    c = (a + b)/2;                                                         %Calcula ponto medio
    d=(a+c)/2;                                                           
    e=(c+b)/2;
    f_d = feval(f,(a+c)/2,varargin{:});                                    %Avalia funções em pontos quartos
    f_e = feval(f,(c+b)/2,varargin{:});
    q1 = (h/6)*(f_a + 4*f_c + f_b);                                        %Simpson Normal
    q2 = (h/12)*(f_a + 4*f_d + 2*f_c + 4*f_e + f_b);                       %Simpson composto

    if abs(q2 - q1) <= tol                                                 %Avalia diferença entre Simpson "normal" e o composto
        q = q2 + (q2 - q1)/15;                                             %Soma o valor correto com o erro estimado pela quadratura adaptativa-->dentro da tolerancia
    
    else
            
        qa = quadrec(f, a, c, tol, f_a, f_d, f_c, varargin{:});            %Avalia funçao em um intervalo
        qb = quadrec(f, c, b, tol, f_c, f_e, f_b, varargin{:});            %Avalia função em outro intervalo
        q = qa + qb;
        
    end
end