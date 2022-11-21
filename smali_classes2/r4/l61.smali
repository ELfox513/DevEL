.class public final Lr4/l61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/y81;
.implements Lr4/e81;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/no2;

.field public final d:Lr4/bf0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/no2;Lr4/bf0;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/l61;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/l61;->b:Lr4/no2;

    iput-object p3, p0, Lr4/l61;->d:Lr4/bf0;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    iget-object v0, p0, Lr4/l61;->b:Lr4/no2;

    iget-object v0, v0, Lr4/no2;->Z:Lr4/cf0;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lr4/cf0;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lr4/l61;->b:Lr4/no2;

    iget-object v1, v1, Lr4/no2;->Z:Lr4/cf0;

    iget-object v1, v1, Lr4/cf0;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lr4/l61;->b:Lr4/no2;

    iget-object v1, v1, Lr4/no2;->Z:Lr4/cf0;

    iget-object v1, v1, Lr4/cf0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final e0(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final o(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final v(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
