.class public final Lr4/p1;
.super Lr4/e2;
.source "SourceFile"


# instance fields
.field public final i:Lr4/x;


# direct methods
.method public constructor <init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;IILr4/x;)V
    .locals 7

    const-string v2, "E20AdmxNj0iK7Vx72nHXXjWnsmv4FUkyxC/Oztwx6eZIzlENIrQYdkN17JfC0Q1q"

    const-string v3, "rY9DNDEvlJE2YV76YVSJLP4cBUy/u1xcBXUcMxb1h8o="

    const/16 v6, 0xb

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lr4/e2;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    iput-object p7, p0, Lr4/p1;->i:Lr4/x;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lr4/p1;->i:Lr4/x;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lr4/e2;->e:Lr4/za4;

    iget-object v2, p0, Lr4/e2;->f:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lr4/x;->c()Landroid/net/NetworkCapabilities;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lr4/za4;->k0(J)Lr4/za4;

    :cond_0
    return-void
.end method
