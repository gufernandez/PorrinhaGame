%Gera arquivo binario de uma imagem bmp exportada como RGB
%
%Entrada: file_name = Nome do arquivo (sem a extensao)
%Obs1: O arquivo bmp deve estar no mesmo diretorio
%Obs2: A imagem so deve possuir cores que possuam valor R,G e B iguais a 0(min) ou 255(max)
%
%Saida: Arquivo .txt com o mesmo nome do file_name(cria no mesmo diretorio)
%
%Author: Miguel Angel Marfurt Alarcon
function geraBinario(file_name)
I = imread([file_name '.bmp']);

linhas=size(I,1);
colunas=size(I,2);

cont=1;
for(i=1:linhas)
    for(j=1:colunas)
        M(cont)=I(i,j,1)/255;
        M(cont+1)=I(i,j,2)/255;
        M(cont+2)=I(i,j,3)/255;
        cont=cont+3;
    end
end

fid = fopen([file_name '.txt'],'wt');
fprintf(fid,'%d',M);
fclose(fid);
end