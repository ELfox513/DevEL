.class public final Lr4/h60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/i60;


# instance fields
.field public final synthetic a:Lr4/vm0;


# direct methods
.method public constructor <init>(Lr4/j60;Lr4/vm0;)V
    .locals 0

    iput-object p2, p0, Lr4/h60;->a:Lr4/vm0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lr4/h60;->a:Lr4/vm0;

    invoke-virtual {v0, p1}, Lr4/vm0;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lr4/h60;->a:Lr4/vm0;

    new-instance v1, Lr4/s90;

    invoke-direct {v1, p1}, Lr4/s90;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    return-void
.end method
