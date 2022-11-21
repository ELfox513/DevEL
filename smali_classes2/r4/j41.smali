.class public final synthetic Lr4/j41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/m41;

.field public final b:Lr4/br2;


# direct methods
.method public constructor <init>(Lr4/m41;Lr4/br2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/j41;->a:Lr4/m41;

    iput-object p2, p0, Lr4/j41;->b:Lr4/br2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 2

    iget-object v0, p0, Lr4/j41;->a:Lr4/m41;

    iget-object v1, p0, Lr4/j41;->b:Lr4/br2;

    check-cast p1, Lr4/og0;

    invoke-virtual {v0, v1, p1}, Lr4/m41;->j(Lr4/br2;Lr4/og0;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
