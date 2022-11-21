.class public final Lr4/mr1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr4/nr1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/nr1;

    invoke-direct {v0}, Lr4/nr1;-><init>()V

    sput-object v0, Lr4/mr1;->a:Lr4/nr1;

    return-void
.end method

.method public static synthetic a()Lr4/nr1;
    .locals 1

    sget-object v0, Lr4/mr1;->a:Lr4/nr1;

    return-object v0
.end method
