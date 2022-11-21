.class public final synthetic Lr4/oc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/xc1;


# instance fields
.field public final a:Lr4/bq;


# direct methods
.method public constructor <init>(Lr4/bq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/oc1;->a:Lr4/bq;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lr4/oc1;->a:Lr4/bq;

    check-cast p1, Lr4/vc1;

    invoke-interface {p1, v0}, Lr4/vc1;->A(Lr4/bq;)V

    return-void
.end method
