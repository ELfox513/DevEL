.class public final Lr4/ls1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lr4/qs1;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/qs1;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ls1;->a:Lr4/qs1;

    invoke-virtual {p1}, Lr4/qs1;->c()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lr4/ls1;->c:Ljava/util/Map;

    iput-object p2, p0, Lr4/ls1;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Lr4/ls1;)Lr4/qs1;
    .locals 0

    iget-object p0, p0, Lr4/ls1;->a:Lr4/qs1;

    return-object p0
.end method

.method public static synthetic b(Lr4/ls1;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lr4/ls1;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic c(Lr4/ls1;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lr4/ls1;->c:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final d()Lr4/ks1;
    .locals 1

    new-instance v0, Lr4/ks1;

    invoke-direct {v0, p0}, Lr4/ks1;-><init>(Lr4/ls1;)V

    invoke-static {v0}, Lr4/ks1;->a(Lr4/ks1;)Lr4/ks1;

    return-object v0
.end method
