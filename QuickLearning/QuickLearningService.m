//
//  QuickLearningService.m
//  QuickLearning
//
//  Created by Roberto Salvador Olguín Lozano on 03/04/12.
//  Copyright (c) 2012 Valle del Bit. All rights reserved.
//

#import "QuickLearningService.h"

@implementation QuickLearningService

static NSArray * usuario = nil;
static NSArray * horarioUsuario = nil;
static NSArray * seccInfo = nil;
static NSArray * nivelesUsuario = nil;
static NSArray * pagosUsuario = nil;
static NSArray * sucursales = nil;

+ (NSArray *) usuario
{
    return usuario;
}

+ (NSArray *) horarioUsuario
{
    return horarioUsuario;
}
+ (NSArray *) seccInfo
{
    return seccInfo;
}
+ (NSArray *) nivelesUsuario
{
    return nivelesUsuario;
}
+ (NSArray *) pagosUsuario
{
    return pagosUsuario;
}
+ (NSArray *) sucursales
{
    return sucursales;
}

+ (void)initializeDatosTest
{
    usuario = [[NSArray alloc] initWithObjects:
               @"QLA001",
               @"carlosivan",
               @"Carlos Ivan",
               @"Vazquez Cruz",
               @"carlos.ivan@geasys.com",
               @"01/01/1980",
               @"Regular",
               nil];
    
    sucursales = [[NSArray alloc] initWithObjects:
                  [[NSArray alloc] initWithObjects:
                   @"QLS022", @"Zona Rosa", @"Liverpool 143 Int. 102 y 103", @"55896300", @"zonarosa@quicklearning.com", [NSNumber numberWithDouble:19.424213], [NSNumber numberWithDouble:-99.164464],nil],
                  [[NSArray alloc] initWithObjects:
                   @"QLS022", @"Polanco", @"Gral. Mariano Escobedo No. 446", @"55896300", @"polanco@quicklearning.com", [NSNumber numberWithDouble:19.433916], [NSNumber numberWithDouble:-99.181942],nil],
                  [[NSArray alloc] initWithObjects:
                   @"QLS022", @"Napoles", @"Insurgentes Sur No. 585", @"55896300", @"napoles@quicklearning.com", [NSNumber numberWithDouble:19.398217], [NSNumber numberWithDouble:-99.171213],nil],
                  [[NSArray alloc] initWithObjects:
                   @"QLS022", @"Cumbres", @"Av. Gonzalitos Norte No. 916", @"78899885", @"cumbres@quicklearning.com", [NSNumber numberWithDouble:25.698221], [NSNumber numberWithDouble:-100.351535],nil],
                  [[NSArray alloc] initWithObjects:
                   @"QLS022", @"San Luis Potosi", @"Av. Venustiano Carranza No. 2315", @"44996633", @"sanluispotosi@quicklearning.com", [NSNumber numberWithDouble:22.148516], [NSNumber numberWithDouble:-101.011321],nil],
                  [[NSArray alloc] initWithObjects:
                   @"QLS022", @"Arlington", @"2801 Eeast Division, Suite 104", @"11125541", @"arlington@quicklearning.com", [NSNumber numberWithDouble:32.744728], [NSNumber numberWithDouble:-97.059896],nil],
                  [[NSArray alloc] initWithObjects:
                   @"QLS022", @"Phoenix", @"5814 W. Camelback Rd. 85301", @"88554466", @"phoenix@quicklearning.com", [NSNumber numberWithDouble:33.50969], [NSNumber numberWithDouble:-112.184452],nil],
                  [[NSArray alloc] initWithObjects:
                   @"QLS022", @"Las Vegas", @"320 N. Nellis Blvd., Ste. 6", @"33885544", @"lasvegas@quicklearning.com", [NSNumber numberWithDouble:36.164518], [NSNumber numberWithDouble:-115.060753], nil],
                nil];
    
    horarioUsuario = [[NSArray alloc] initWithObjects:
               @"14:00:00",
               @"15:30:00",
               nil];
    
    seccInfo = [[NSArray alloc] initWithObjects:
               @"Configuracion",
               @"Pagos",
               @"Mi curso",
               nil];
    
    nivelesUsuario = [[NSArray alloc] initWithObjects:
        [[NSArray alloc] initWithObjects:
            @"QLN001", @"Basico 1", @"Cursado", [NSNumber numberWithInt:20110912], [NSNumber numberWithInt:20110930], @"A", nil],
        [[NSArray alloc] initWithObjects:
            @"QLN002", @"Basico 2", @"Cursado", [NSNumber numberWithInt:20110931], [NSNumber numberWithInt:20111025], @"A", nil],
        [[NSArray alloc] initWithObjects:
            @"QLN003", @"Basico 3", @"Cursado", [NSNumber numberWithInt:20111026], [NSNumber numberWithInt:20111111], @"B", nil],
        [[NSArray alloc] initWithObjects:
            @"QLN004", @"Intermedio 1", @"Cursado", [NSNumber numberWithInt:20111112], [NSNumber numberWithInt:20111203], @"A", nil],
        [[NSArray alloc] initWithObjects:
            @"QLN005", @"Intermedio 2", @"Cursado", [NSNumber numberWithInt:20111204], [NSNumber numberWithInt:20111228], @"B", nil],
        [[NSArray alloc] initWithObjects:
            @"QLN006", @"Intermedio 3", @"Cursado", [NSNumber numberWithInt:20111229], [NSNumber numberWithInt:20120127], @"A", nil],
        [[NSArray alloc] initWithObjects:
            @"QLN007", @"Avanzado 1", @"Cursado", [NSNumber numberWithInt:20120128], [NSNumber numberWithInt:20120227], @"B", nil],
        [[NSArray alloc] initWithObjects:
            @"QLN008", @"Avanzado 2", @"En curso", [NSNumber numberWithInt:20120327], [NSNumber numberWithInt:0], @"", nil],
                      nil];
                     
    
    pagosUsuario = [[NSArray alloc] initWithObjects:
                    [[NSArray alloc] initWithObjects:
                     @"QLP001", @"Basico 1", @"Abono", [NSNumber numberWithInt:20110912], [NSNumber numberWithInt:400], nil],
                    [[NSArray alloc] initWithObjects:
                     @"QLP002", @"Basico 1", @"Total", [NSNumber numberWithInt:20110931], [NSNumber numberWithInt:1570], nil],
                    [[NSArray alloc] initWithObjects:
                     @"QLP003", @"Basico 2", @"Total", [NSNumber numberWithInt:20111026], [NSNumber numberWithInt:1728], nil],
                    [[NSArray alloc] initWithObjects:
                     @"QLP004", @"Basico 3", @"Total", [NSNumber numberWithInt:20111026], [NSNumber numberWithInt:1970], nil],
                    [[NSArray alloc] initWithObjects:
                     @"QLP005", @"Intermedio 1", @"Total", [NSNumber numberWithInt:20111112], [NSNumber numberWithInt:1970], nil],
                    [[NSArray alloc] initWithObjects:
                     @"QLP006", @"Intermedio 2", @"Total", [NSNumber numberWithInt:20111204], [NSNumber numberWithInt:1728], nil],
                    [[NSArray alloc] initWithObjects:
                     @"QLP007", @"Intermedio 3", @"Abono", [NSNumber numberWithInt:20111229], [NSNumber numberWithInt:700], nil],
                    [[NSArray alloc] initWithObjects:
                     @"QLP008", @"Intermedio 3", @"Total", [NSNumber numberWithInt:20111229], [NSNumber numberWithInt:1270], nil],
                    [[NSArray alloc] initWithObjects:
                     @"QLP009", @"Avanzado 1", @"Total", [NSNumber numberWithInt:20120128], [NSNumber numberWithInt:1728], nil],
                    [[NSArray alloc] initWithObjects:
                     @"QLP010", @"Avanzado 2", @"Total", [NSNumber numberWithInt:20120327], [NSNumber numberWithInt:1728], nil],
                    nil];
    
}


@end
