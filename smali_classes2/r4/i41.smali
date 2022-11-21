.class public final synthetic Lr4/i41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ps2;


# instance fields
.field public final a:Lr4/m41;


# direct methods
.method public constructor <init>(Lr4/m41;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/i41;->a:Lr4/m41;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/i41;->a:Lr4/m41;

    check-cast p1, Lr4/bp2;

    invoke-virtual {v0, p1}, Lr4/m41;->k(Lr4/bp2;)Lr4/bp2;

    return-object p1
.end method
