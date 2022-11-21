.class public final synthetic Lr4/p80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/rt0;


# instance fields
.field public final a:Lr4/i80;


# direct methods
.method public constructor <init>(Lr4/i80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/p80;->a:Lr4/i80;

    return-void
.end method

.method public static b(Lr4/i80;)Lr4/rt0;
    .locals 1

    new-instance v0, Lr4/p80;

    invoke-direct {v0, p0}, Lr4/p80;-><init>(Lr4/i80;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lr4/p80;->a:Lr4/i80;

    invoke-interface {v0}, Lr4/i80;->zza()V

    return-void
.end method
