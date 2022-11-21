.class public final Lr4/ww1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/xx1;


# static fields
.field public static final f:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lr4/wv1;

.field public final b:Lr4/i83;

.field public final c:Lr4/hp2;

.field public final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public final e:Lr4/f02;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Received error HTTP response code: (.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lr4/ww1;->f:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lr4/hp2;Lr4/wv1;Lr4/i83;Ljava/util/concurrent/ScheduledExecutorService;Lr4/f02;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ww1;->c:Lr4/hp2;

    iput-object p2, p0, Lr4/ww1;->a:Lr4/wv1;

    iput-object p3, p0, Lr4/ww1;->b:Lr4/i83;

    iput-object p4, p0, Lr4/ww1;->d:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p5, p0, Lr4/ww1;->e:Lr4/f02;

    return-void
.end method

.method public static synthetic b(Lr4/ww1;)Lr4/f02;
    .locals 0

    iget-object p0, p0, Lr4/ww1;->e:Lr4/f02;

    return-object p0
.end method

.method public static synthetic c()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lr4/ww1;->f:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public final a(Lr4/og0;)Lr4/h83;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/og0;",
            ")",
            "Lr4/h83<",
            "Lr4/bp2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/ww1;->a:Lr4/wv1;

    invoke-virtual {v0, p1}, Lr4/wv1;->a(Lr4/og0;)Lr4/h83;

    move-result-object p1

    new-instance v0, Lr4/tw1;

    invoke-direct {v0, p0}, Lr4/tw1;-><init>(Lr4/ww1;)V

    iget-object v1, p0, Lr4/ww1;->b:Lr4/i83;

    invoke-static {p1, v0, v1}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    sget-object v0, Lr4/rz;->O3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lr4/rz;->P3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lr4/ww1;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p1, v0, v1, v2, v3}, Lr4/y73;->h(Lr4/h83;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lr4/h83;

    move-result-object p1

    const-class v0, Ljava/util/concurrent/TimeoutException;

    sget-object v1, Lr4/uw1;->a:Lr4/e73;

    sget-object v2, Lr4/qm0;->f:Lr4/i83;

    invoke-static {p1, v0, v1, v2}, Lr4/y73;->g(Lr4/h83;Ljava/lang/Class;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    :cond_0
    new-instance v0, Lr4/vw1;

    invoke-direct {v0, p0}, Lr4/vw1;-><init>(Lr4/ww1;)V

    sget-object v1, Lr4/qm0;->f:Lr4/i83;

    invoke-static {p1, v0, v1}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method public final synthetic d(Ljava/io/InputStream;)Lr4/h83;
    .locals 3

    new-instance v0, Lr4/bp2;

    new-instance v1, Lr4/yo2;

    iget-object v2, p0, Lr4/ww1;->c:Lr4/hp2;

    invoke-direct {v1, v2}, Lr4/yo2;-><init>(Lr4/hp2;)V

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Lr4/ap2;->a(Ljava/io/Reader;)Lr4/ap2;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lr4/bp2;-><init>(Lr4/yo2;Lr4/ap2;)V

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
