.class public final Lr4/d02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/y81;
.implements Lr4/m71;


# static fields
.field public static final d:Ljava/lang/Object;

.field public static k:I


# instance fields
.field public final a:Lb3/y1;

.field public final b:Lr4/n02;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr4/d02;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lr4/n02;Lb3/y1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/d02;->b:Lr4/n02;

    iput-object p2, p0, Lr4/d02;->a:Lb3/y1;

    return-void
.end method


# virtual methods
.method public final B(Lr4/lt;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lr4/d02;->a(Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 4

    sget-object v0, Lr4/rz;->x4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/d02;->a:Lb3/y1;

    invoke-interface {v0}, Lb3/y1;->y()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lr4/d02;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lr4/d02;->k:I

    sget-object v2, Lr4/rz;->y4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lt v1, v2, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lr4/d02;->b:Lr4/n02;

    invoke-virtual {v1, p1}, Lr4/n02;->f(Z)V

    monitor-enter v0

    :try_start_1
    sget p1, Lr4/d02;->k:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lr4/d02;->k:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_2
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lr4/d02;->a(Z)V

    return-void
.end method
