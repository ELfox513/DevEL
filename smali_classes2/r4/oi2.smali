.class public final Lr4/oi2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/ig2<",
        "Lorg/json/JSONObject;",
        ">;>;"
    }
.end annotation


# direct methods
.method public static b(Lr4/bl0;Lr4/cl0;Ljava/lang/Object;Lr4/ah2;Lr4/zh2;Lr4/or3;Lr4/or3;Lr4/or3;Lr4/or3;Lr4/or3;Lr4/or3;Lr4/or3;Lr4/or3;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)Lr4/ig2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bl0;",
            "Lr4/cl0;",
            "Ljava/lang/Object;",
            "Lr4/ah2;",
            "Lr4/zh2;",
            "Lr4/or3<",
            "Lr4/ug2;",
            ">;",
            "Lr4/or3<",
            "Lr4/dh2;",
            ">;",
            "Lr4/or3<",
            "Lr4/kh2;",
            ">;",
            "Lr4/or3<",
            "Lr4/oh2;",
            ">;",
            "Lr4/or3<",
            "Lr4/vh2;",
            ">;",
            "Lr4/or3<",
            "Lr4/ci2;",
            ">;",
            "Lr4/or3<",
            "Lr4/vi2;",
            ">;",
            "Lr4/or3<",
            "Lr4/ri2;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lr4/ig2<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    check-cast p2, Lr4/sh2;

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object p1, Lr4/rz;->Z3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p5}, Lr4/or3;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/eg2;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object p1, Lr4/rz;->a4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p6}, Lr4/or3;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/eg2;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object p1, Lr4/rz;->b4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p7}, Lr4/or3;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/eg2;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object p1, Lr4/rz;->c4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p8}, Lr4/or3;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/eg2;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object p1, Lr4/rz;->g4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p10}, Lr4/or3;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/eg2;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object p1, Lr4/rz;->h4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p11}, Lr4/or3;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/eg2;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance p1, Lr4/ig2;

    invoke-direct {p1, p13, p0}, Lr4/ig2;-><init>(Ljava/util/concurrent/Executor;Ljava/util/Set;)V

    return-object p1
.end method
