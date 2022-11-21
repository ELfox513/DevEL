.class public final Lr4/x32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/dh1;


# instance fields
.field public final a:Lr4/no2;

.field public final b:Lr4/ed0;

.field public final c:Z

.field public d:Lr4/b81;


# direct methods
.method public constructor <init>(Lr4/no2;Lr4/ed0;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/x32;->d:Lr4/b81;

    iput-object p1, p0, Lr4/x32;->a:Lr4/no2;

    iput-object p2, p0, Lr4/x32;->b:Lr4/ed0;

    iput-boolean p3, p0, Lr4/x32;->c:Z

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;Lr4/w71;)V
    .locals 0

    :try_start_0
    iget-boolean p1, p0, Lr4/x32;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr4/x32;->b:Lr4/ed0;

    invoke-static {p2}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object p2

    invoke-interface {p1, p2}, Lr4/ed0;->u3(Lf4/a;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lr4/x32;->b:Lr4/ed0;

    invoke-static {p2}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object p2

    invoke-interface {p1, p2}, Lr4/ed0;->s0(Lf4/a;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz p1, :cond_3

    iget-object p1, p0, Lr4/x32;->d:Lr4/b81;

    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object p1, Lr4/rz;->a1:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lr4/x32;->a:Lr4/no2;

    iget p1, p1, Lr4/no2;->U:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lr4/x32;->d:Lr4/b81;

    invoke-virtual {p1}, Lr4/b81;->zza()V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Lr4/ch1;

    const-string p2, "Adapter failed to show."

    invoke-direct {p1, p2}, Lr4/ch1;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    new-instance p2, Lr4/ch1;

    invoke-direct {p2, p1}, Lr4/ch1;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final b(Lr4/b81;)V
    .locals 0

    iput-object p1, p0, Lr4/x32;->d:Lr4/b81;

    return-void
.end method
