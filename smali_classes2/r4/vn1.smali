.class public final Lr4/vn1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t73<",
        "Lr4/cs0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lr4/u50;


# direct methods
.method public constructor <init>(Lr4/fo1;Ljava/lang/String;Lr4/u50;)V
    .locals 0

    iput-object p2, p0, Lr4/vn1;->a:Ljava/lang/String;

    iput-object p3, p0, Lr4/vn1;->b:Lr4/u50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lr4/cs0;

    iget-object v0, p0, Lr4/vn1;->a:Ljava/lang/String;

    iget-object v1, p0, Lr4/vn1;->b:Lr4/u50;

    invoke-interface {p1, v0, v1}, Lr4/cs0;->v0(Ljava/lang/String;Lr4/u50;)V

    return-void
.end method
