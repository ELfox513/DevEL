.class public abstract Lr4/et2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Lr4/h83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/h83<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lr4/i83;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:Lr4/ft2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/ft2<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    sput-object v0, Lr4/et2;->d:Lr4/h83;

    return-void
.end method

.method public constructor <init>(Lr4/i83;Ljava/util/concurrent/ScheduledExecutorService;Lr4/ft2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/i83;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lr4/ft2<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/et2;->a:Lr4/i83;

    iput-object p2, p0, Lr4/et2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lr4/et2;->c:Lr4/ft2;

    return-void
.end method

.method public static synthetic a()Lr4/h83;
    .locals 1

    sget-object v0, Lr4/et2;->d:Lr4/h83;

    return-object v0
.end method

.method public static synthetic b(Lr4/et2;)Lr4/i83;
    .locals 0

    iget-object p0, p0, Lr4/et2;->a:Lr4/i83;

    return-object p0
.end method

.method public static synthetic c(Lr4/et2;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lr4/et2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static synthetic d(Lr4/et2;)Lr4/ft2;
    .locals 0

    iget-object p0, p0, Lr4/et2;->c:Lr4/ft2;

    return-object p0
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Lr4/h83;)Lr4/dt2;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Lr4/h83<",
            "TI;>;)",
            "Lr4/dt2<",
            "TI;>;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v8, Lr4/dt2;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lr4/dt2;-><init>(Lr4/et2;Ljava/lang/Object;Ljava/lang/String;Lr4/h83;Ljava/util/List;Lr4/h83;Lr4/vs2;)V

    return-object v8
.end method

.method public final varargs f(Ljava/lang/Object;[Lr4/h83;)Lr4/us2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;[",
            "Lr4/h83<",
            "*>;)",
            "Lr4/us2;"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Lr4/us2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lr4/us2;-><init>(Lr4/et2;Ljava/lang/Object;Ljava/util/List;Lr4/vs2;)V

    return-object v0
.end method

.method public abstract g(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
