.class public final synthetic Lr4/m11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/y81;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/im0;

.field public final d:Lr4/no2;

.field public final k:Lr4/hp2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/im0;Lr4/no2;Lr4/hp2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/m11;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/m11;->b:Lr4/im0;

    iput-object p3, p0, Lr4/m11;->d:Lr4/no2;

    iput-object p4, p0, Lr4/m11;->k:Lr4/hp2;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 5

    iget-object v0, p0, Lr4/m11;->a:Landroid/content/Context;

    iget-object v1, p0, Lr4/m11;->b:Lr4/im0;

    iget-object v2, p0, Lr4/m11;->d:Lr4/no2;

    iget-object v3, p0, Lr4/m11;->k:Lr4/hp2;

    invoke-static {}, Lz2/t;->n()Lb3/c0;

    move-result-object v4

    iget-object v1, v1, Lr4/im0;->a:Ljava/lang/String;

    iget-object v2, v2, Lr4/no2;->C:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lr4/hp2;->f:Ljava/lang/String;

    invoke-virtual {v4, v0, v1, v2, v3}, Lb3/c0;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
