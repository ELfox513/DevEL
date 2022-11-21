.class public final synthetic Lr4/c61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/p03;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/im0;

.field public final c:Lr4/hp2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/im0;Lr4/hp2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/c61;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/c61;->b:Lr4/im0;

    iput-object p3, p0, Lr4/c61;->c:Lr4/hp2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lr4/c61;->a:Landroid/content/Context;

    iget-object v1, p0, Lr4/c61;->b:Lr4/im0;

    iget-object v2, p0, Lr4/c61;->c:Lr4/hp2;

    check-cast p1, Lr4/no2;

    new-instance v3, Lb3/y;

    invoke-direct {v3, v0}, Lb3/y;-><init>(Landroid/content/Context;)V

    iget-object v0, p1, Lr4/no2;->B:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lb3/y;->e(Ljava/lang/String;)V

    iget-object p1, p1, Lr4/no2;->C:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lb3/y;->f(Ljava/lang/String;)V

    iget-object p1, v1, Lr4/im0;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lb3/y;->d(Ljava/lang/String;)V

    iget-object p1, v2, Lr4/hp2;->f:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lb3/y;->c(Ljava/lang/String;)V

    return-object v3
.end method
