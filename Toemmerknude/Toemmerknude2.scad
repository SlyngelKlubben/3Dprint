Unit=5;
Slack=0.9;
Laengde=12*Unit;
Bredde=2*Unit;
Pindnr=2;
list = [[0,1,2,0,0,0,0,0],
        [1,2,2,1,1,1,1,1],
        [2,1,1,2,0,1,1,0],
        [0,2,1,0,0,1,1,0],
        [2,1,2,2,0,0,1,0],
        [1,2,2,1,1,1,0,0]];


difference(){
pind();
translate([-2*Unit-Slack/2,-Slack/2,-Slack/2])
cut();
}


module cut(){
    for (i = [0:3]) {
        if (list[Pindnr-1][i]!=0) {
            translate([(i)*Unit,-Unit,0])
            cube([Unit+Slack,list[Pindnr-1][i]*Unit+Slack,Unit+Slack],center=false);
        }
    }
    for (i = [4:7]) {
        if (list[Pindnr-1][i]!=0) {
            translate([(i-4)*Unit,-Unit,-Unit])
            cube([Unit+Slack,list[Pindnr-1][i]*Unit+Slack,Unit+Slack],center=false);
        }
    }
}
module pind(){
cube([Laengde,Bredde,Bredde], center = true);
} 

