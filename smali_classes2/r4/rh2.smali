.class public final synthetic Lr4/rh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/dg2;


# instance fields
.field public final a:Lr4/sh2;


# direct methods
.method public constructor <init>(Lr4/sh2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/rh2;->a:Lr4/sh2;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lr4/rh2;->a:Lr4/sh2;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lr4/sh2;->a(Lorg/json/JSONObject;)V

    return-void
.end method
