.class public final synthetic Lr4/ye2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/d73;


# instance fields
.field public final a:Lr4/df2;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lr4/df2;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ye2;->a:Lr4/df2;

    iput-object p2, p0, Lr4/ye2;->b:Ljava/lang/String;

    iput-object p3, p0, Lr4/ye2;->c:Ljava/util/List;

    iput-object p4, p0, Lr4/ye2;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final zza()Lr4/h83;
    .locals 4

    iget-object v0, p0, Lr4/ye2;->a:Lr4/df2;

    iget-object v1, p0, Lr4/ye2;->b:Ljava/lang/String;

    iget-object v2, p0, Lr4/ye2;->c:Ljava/util/List;

    iget-object v3, p0, Lr4/ye2;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lr4/df2;->b(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
