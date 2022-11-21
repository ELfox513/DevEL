.class public final Lr4/f42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/s12;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/s12<",
        "Lr4/zp2;",
        "Lr4/n32;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/gq1;


# direct methods
.method public constructor <init>(Lr4/gq1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/f42;->a:Lr4/gq1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Lr4/t12;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lr4/t12<",
            "Lr4/zp2;",
            "Lr4/n32;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/f42;->a:Lr4/gq1;

    invoke-virtual {v0, p1, p2}, Lr4/gq1;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lr4/zp2;

    move-result-object p2

    new-instance v0, Lr4/n32;

    invoke-direct {v0}, Lr4/n32;-><init>()V

    new-instance v1, Lr4/t12;

    invoke-direct {v1, p2, v0, p1}, Lr4/t12;-><init>(Ljava/lang/Object;Lr4/u81;Ljava/lang/String;)V

    return-object v1
.end method
