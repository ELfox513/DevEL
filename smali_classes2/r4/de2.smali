.class public final synthetic Lr4/de2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ge2;


# instance fields
.field public final a:Lr4/fe2;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lr4/fe2;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/de2;->a:Lr4/fe2;

    iput-object p2, p0, Lr4/de2;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lr4/de2;->a:Lr4/fe2;

    iget-object v1, p0, Lr4/de2;->b:Ljava/util/ArrayList;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1}, Lr4/fe2;->a(Ljava/util/ArrayList;Landroid/os/Bundle;)V

    return-void
.end method
