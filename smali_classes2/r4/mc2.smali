.class public final Lr4/mc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/nc2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/i83;

.field public final b:Lr4/lq1;

.field public final c:Ljava/lang/String;

.field public final d:Lr4/hp2;


# direct methods
.method public constructor <init>(Lr4/i83;Lr4/lq1;Lr4/hp2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/mc2;->a:Lr4/i83;

    iput-object p2, p0, Lr4/mc2;->b:Lr4/lq1;

    iput-object p3, p0, Lr4/mc2;->d:Lr4/hp2;

    iput-object p4, p0, Lr4/mc2;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lr4/nc2;
    .locals 3

    iget-object v0, p0, Lr4/mc2;->b:Lr4/lq1;

    iget-object v1, p0, Lr4/mc2;->d:Lr4/hp2;

    iget-object v1, v1, Lr4/hp2;->f:Ljava/lang/String;

    iget-object v2, p0, Lr4/mc2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lr4/lq1;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lr4/mc2;->b:Lr4/lq1;

    invoke-virtual {v1}, Lr4/lq1;->c()Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lr4/nc2;

    invoke-direct {v2, v0, v1}, Lr4/nc2;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-object v2
.end method

.method public final zza()Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/nc2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/mc2;->a:Lr4/i83;

    new-instance v1, Lr4/lc2;

    invoke-direct {v1, p0}, Lr4/lc2;-><init>(Lr4/mc2;)V

    invoke-interface {v0, v1}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
