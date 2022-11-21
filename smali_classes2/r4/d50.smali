.class public final synthetic Lr4/d50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/p03;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/d50;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lr4/d50;->a:Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    sget-object v1, Lr4/t50;->a:Lr4/u50;

    sget-object v1, Lr4/e10;->k:Lr4/u00;

    invoke-virtual {v1}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v1

    const-string v2, "prepareClickUrl.attestation2"

    invoke-virtual {v1, p1, v2}, Lr4/nl0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
