.class public final Lr4/q1;
.super Lr4/e2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V
    .locals 7

    const-string v2, "haIuUvChZNHM9MeHv9WrHlihODeJsTzWhRoU3l/WedulIO/DPlHeipCgsdOhWEK6"

    const-string v3, "2q9SJ42xLZKaCbpMEBENFcJEqDDES1vvcaask6iD3co="

    const/16 v6, 0xc

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lr4/e2;-><init>(Lr4/v0;Ljava/lang/String;Ljava/lang/String;Lr4/za4;II)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lr4/e2;->e:Lr4/za4;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lr4/za4;->l0(J)Lr4/za4;

    iget-object v0, p0, Lr4/e2;->e:Lr4/za4;

    iget-object v1, p0, Lr4/e2;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lr4/e2;->b:Lr4/v0;

    invoke-virtual {v3}, Lr4/v0;->c()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lr4/za4;->l0(J)Lr4/za4;

    return-void
.end method
