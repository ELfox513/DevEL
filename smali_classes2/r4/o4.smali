.class public final synthetic Lr4/o4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/m13;


# instance fields
.field public final a:Lr4/y4;


# direct methods
.method public constructor <init>(Lr4/y4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/o4;->a:Lr4/y4;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/o4;->a:Lr4/y4;

    invoke-virtual {v0}, Lr4/y4;->Y()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
