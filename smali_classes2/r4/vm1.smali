.class public final synthetic Lr4/vm1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/nm;


# instance fields
.field public final a:Lr4/cs0;


# direct methods
.method public constructor <init>(Lr4/cs0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/vm1;->a:Lr4/cs0;

    return-void
.end method


# virtual methods
.method public final Y(Lr4/mm;)V
    .locals 3

    iget-object v0, p0, Lr4/vm1;->a:Lr4/cs0;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-boolean p1, p1, Lr4/mm;->j:Z

    const/4 v2, 0x1

    if-eq v2, p1, :cond_0

    const-string p1, "0"

    goto :goto_0

    :cond_0
    const-string p1, "1"

    :goto_0
    const-string v2, "isVisible"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onAdVisibilityChanged"

    invoke-interface {v0, p1, v1}, Lr4/e80;->H0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
