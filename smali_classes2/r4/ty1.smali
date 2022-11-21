.class public final synthetic Lr4/ty1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/ig2;


# direct methods
.method public constructor <init>(Lr4/ig2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ty1;->a:Lr4/ig2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 2

    iget-object v0, p0, Lr4/ty1;->a:Lr4/ig2;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    move-result-object v1

    invoke-virtual {v1, p1}, Lb3/k2;->S(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr4/ig2;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
