.class public final Lr4/zr2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lr4/i83;
    .locals 2

    sget-object v0, Lr4/rz;->X3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lr4/qm0;->c:Lr4/i83;

    return-object v0

    :cond_0
    sget-object v0, Lr4/rz;->W3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lr4/qm0;->a:Lr4/i83;

    return-object v0

    :cond_1
    sget-object v0, Lr4/qm0;->e:Lr4/i83;

    return-object v0
.end method
