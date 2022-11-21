.class public final Lr4/ns2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr4/os2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/os2;

    invoke-direct {v0}, Lr4/os2;-><init>()V

    sput-object v0, Lr4/ns2;->a:Lr4/os2;

    return-void
.end method

.method public static synthetic a()Lr4/os2;
    .locals 1

    sget-object v0, Lr4/ns2;->a:Lr4/os2;

    return-object v0
.end method
