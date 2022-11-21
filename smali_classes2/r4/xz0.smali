.class public final synthetic Lr4/xz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/zz0;

.field public final b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lr4/zz0;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/xz0;->a:Lr4/zz0;

    iput-object p2, p0, Lr4/xz0;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/xz0;->a:Lr4/zz0;

    iget-object v1, p0, Lr4/xz0;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lr4/zz0;->e(Lorg/json/JSONObject;)V

    return-void
.end method
