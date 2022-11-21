.class public final Lr4/e31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/nm;


# instance fields
.field public final a:Lr4/pj0;


# direct methods
.method public constructor <init>(Lr4/pj0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/e31;->a:Lr4/pj0;

    return-void
.end method


# virtual methods
.method public final Y(Lr4/mm;)V
    .locals 1

    iget-object v0, p0, Lr4/e31;->a:Lr4/pj0;

    iget-boolean p1, p1, Lr4/mm;->j:Z

    invoke-virtual {v0, p1}, Lr4/pj0;->a(Z)V

    return-void
.end method
