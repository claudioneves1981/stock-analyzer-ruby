# Comprando e vendendo ações

Morgana está estudando sobre compra e venda de ações. Como uma boa programadora, quer
implementar um código que calcule as ações mais vantajosas de acordo com a
variação de preço ao longo do tempo.

Ela sabe que o ideal é comprar pelo menor preço e vender pelo maior preço. Considerando que
os valores apresentados, da esquerda para a direita, correspondem à variação ao
longo do tempo.

Vejamos um exemplo:

```
XXP:3 5 12 1 2
ZZQ:10 8 2 1
```

Neste caso, a melhor negociação indica que o menor preço para a ação de código XXP seria `3` e o maior preço, `12`. Sendo
assim, ela teria um lucro de `9`, se tivesse comprado a 3 e vendido por 12. 
Já para a ação ZZQ não seria possível obter lucro, mas a menor perda seria
comprá-la a `2` e vender a `1`, com um prejuízo de `-1`.

> Não basta pegar o menor e o maior número de forma aleatória! É importante considerar a variação ao longo do tempo.

Neste desafio você vai precisar implementar dois métodos:

- um método que calcula qual seria o maior lucro (ou menor prejuízo possível) para uma ação. O retorno seria algo assim: `XXP:9`.
- outro método que, dada uma lista de ações, retorna a mesma lista, ordenada pelo valor de maior lucro.

Por exemplo, dada uma lista em *string* com uma ação por linha:

```
PPP:53 3 2 13 6
WRW:5 14 10 1 20
FTT:8 5 2 1
```

A ação PPP daria um lucro de 11; a WRW, lucro de 19; e, a FTT, um prejuízo de -1. O
retorno seria `["FTT:-1", "PPP:11", "WRW:19"]`

## Observação:

Em strings `\n` indica uma quebra de linha.
