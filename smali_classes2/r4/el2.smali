.class public final Lr4/el2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/pr2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lr4/r61<",
        "TA;>;A:",
        "Lr4/i31;",
        ">",
        "Ljava/lang/Object;",
        "Lr4/pr2<",
        "TU;TA;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/zl2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/zl2<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final b:Lr4/bm2;

.field public final c:Lr4/tt;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lr4/eu;

.field public final g:Lr4/er2;


# direct methods
.method public constructor <init>(Lr4/zl2;Lr4/bm2;Lr4/tt;Ljava/lang/String;Ljava/util/concurrent/Executor;Lr4/eu;Lr4/er2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/zl2<",
            "TU;>;",
            "Lr4/bm2;",
            "Lr4/tt;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Lr4/eu;",
            "Lr4/er2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/el2;->a:Lr4/zl2;

    iput-object p2, p0, Lr4/el2;->b:Lr4/bm2;

    iput-object p3, p0, Lr4/el2;->c:Lr4/tt;

    iput-object p4, p0, Lr4/el2;->d:Ljava/lang/String;

    iput-object p5, p0, Lr4/el2;->e:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lr4/el2;->f:Lr4/eu;

    iput-object p7, p0, Lr4/el2;->g:Lr4/er2;

    return-void
.end method


# virtual methods
.method public final a()Lr4/er2;
    .locals 1

    iget-object v0, p0, Lr4/el2;->g:Lr4/er2;

    return-object v0
.end method

.method public final zza()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lr4/el2;->e:Ljava/util/concurrent/Executor;

    return-object v0
.end method
